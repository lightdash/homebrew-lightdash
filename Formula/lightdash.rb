class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2983.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2983.0/lightdash-cli-0.2983.0-macos-arm64.tar.gz"
      sha256 "1e1b9d8b99d8cc0496048bd7dc4c6e224430792c16458c86d9b9088c8546bf80"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2983.0/lightdash-cli-0.2983.0-macos-x64.tar.gz"
      sha256 "4b6373f77c2655f63cb084b6b1444dd674acb0302bf7ae8edf4570f5a5deffbe"
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
