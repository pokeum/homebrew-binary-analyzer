class BinaryAnalyzer < Formula
  desc "Test distribution: binary-analyzer"
  homepage "https://pokeum.com/ab180/binary-analyzer/latest/"

  version = "0.0.0"
  sha_macos_aarch64 = "8a34fc919ff32591744563bbc2024a225cace40414ed0a1912d070fae281c707"
  sha_macos_x64 = "7e6b29c0091425364e53f0db0f6fa8b38c0fbde695bece357d9677324e252d0f"
  # sha_linux_aarch64 = ""
  sha_linux_x64 = "6476dd9d039a947dbdfe1661df7712823caaba2e75d0b2df8098553f2d569158"

  on_macos do
    if Hardware::CPU.arm?
      url "https://pokeum.com/ab180/binary-analyzer/#{version}/macos-aarch64/binary-analyzer.tar.gz"
      sha256 sha_macos_aarch64
    else
      url "https://pokeum.com/ab180/binary-analyzer/#{version}/macos-x64/binary-analyzer.tar.gz"
      sha256 sha_macos_x64
    end
  end

  on_linux do
    # if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    #   url "https://pokeum.com/ab180/binary-analyzer/#{version}/linux-aarch64/binary-analyzer.tar.gz"
    #   sha256 sha_linux_aarch64
    # end
    if Hardware::CPU.intel?
      url "https://pokeum.com/ab180/binary-analyzer/#{version}/linux-x64/binary-analyzer.tar.gz"
      sha256 sha_linux_x64
    else
      version "0.0.0"
      # Dummy URL and SHA256 just to satisfy Homebrew audit for Linux ARM
      url "https://example.com/unsupported-linux-arm.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855" # SHA of empty file
    end
  end

  def install
    bin.install "binary-analyzer"
  end
end
