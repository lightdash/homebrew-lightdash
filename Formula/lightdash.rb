class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3417.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3417.1/lightdash-cli-0.3417.1-macos-arm64.tar.gz"
      sha256 "2cbb4f59a9d28fc245bd26a066eb8ba7d7eb17f72d9efe75c46de1c00f4d6eb8"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3417.1/lightdash-cli-0.3417.1-macos-x64.tar.gz"
      sha256 "f4527b60981e18109eff540a177639f9ad71762569648c36c4e68875e100a575"
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
