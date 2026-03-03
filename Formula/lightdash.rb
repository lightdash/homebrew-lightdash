class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2555.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2555.1/lightdash-cli-0.2555.1-macos-arm64.tar.gz"
      sha256 "a272093a122647e0a85294ea6cdf9cb241979b93542a1a11d60e02cb8533a70b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2555.1/lightdash-cli-0.2555.1-macos-x64.tar.gz"
      sha256 "75c6641bc8f82a59d3b577d5c42926e4cbabe16bdea4b60964510eed9f658950"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
