class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3447.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3447.1/lightdash-cli-0.3447.1-macos-arm64.tar.gz"
      sha256 "f7019ab875d35ec25fc051977d3431b8f206e020fb2cf123955cf71b3e3b96e4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3447.1/lightdash-cli-0.3447.1-macos-x64.tar.gz"
      sha256 "d7891232721e104911a69687bd785230fab35eb8acb9ac88170a37bac91651cc"
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
