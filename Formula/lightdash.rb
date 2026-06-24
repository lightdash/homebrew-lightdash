class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3237.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.0/lightdash-cli-0.3237.0-macos-arm64.tar.gz"
      sha256 "db858e3d95a17e5296deb2ffc46bb862dda042a31c53d8a55f8f2110e05a4b35"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3237.0/lightdash-cli-0.3237.0-macos-x64.tar.gz"
      sha256 "85e3793d14c60c2ffa9289523e1d57a1e90b91a183bfffd1742dd25170d06159"
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
