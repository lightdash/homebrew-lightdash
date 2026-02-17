class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2477.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2477.0/lightdash-cli-0.2477.0-macos-arm64.tar.gz"
      sha256 "51277fd7faa99d4a85dbb5b2ac0795dad62fe27d5d1ae13297b4921cbdaecf80"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2477.0/lightdash-cli-0.2477.0-macos-x64.tar.gz"
      sha256 "e36b1fd676ffb34bc76f8fe888fb57b3bb20feae8b8b991b93269aeb229a9cdb"
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
