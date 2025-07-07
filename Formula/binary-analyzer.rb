class BinaryAnalyzer < Formula
  desc "Test distribution: binary-analyzer"
  homepage "https://pokeum.com/ab180/binary-analyzer/latest/"

  binary_analyzer_version = "0.0.1"
  sha_macos_aarch64 = "c70c9bbd9c7cef569a982a6ce59565ecc5e98070d511d883768e12d6d6e76ed5"
  sha_macos_x64 = "f7492e705c02637061f1847e33d0e4eb4aeb937c00e508594a5894f60b7c6daf"
  # sha_linux_aarch64 = ""
  sha_linux_x64 = "c8faca61e27f6e91afbb11edb68f3a72b7eed88a8f08da2cc416a164909704f3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pokeum.com/ab180/binary-analyzer/#{binary_analyzer_version}/macos-aarch64/binary-analyzer.tar.gz"
      sha256 sha_macos_aarch64
    else
      url "https://pokeum.com/ab180/binary-analyzer/#{binary_analyzer_version}/macos-x64/binary-analyzer.tar.gz"
      sha256 sha_macos_x64
    end
  end

  on_linux do
    # if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    #   url "https://pokeum.com/ab180/binary-analyzer/#{binary_analyzer_version}/linux-aarch64/binary-analyzer.tar.gz"
    #   sha256 sha_linux_aarch64
    # end
    if Hardware::CPU.intel?
      url "https://pokeum.com/ab180/binary-analyzer/#{binary_analyzer_version}/linux-x64/binary-analyzer.tar.gz"
      sha256 sha_linux_x64
    else
      version binary_analyzer_version
      # Dummy URL and SHA256 just to satisfy Homebrew audit for Linux ARM
      url "https://example.com/unsupported-linux-arm.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855" # SHA of empty file
    end
  end

  def install
    bin.install "binary-analyzer"
  end
end
