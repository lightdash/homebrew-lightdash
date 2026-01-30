class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2401.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2401.0/lightdash-cli-0.2401.0-macos-arm64.tar.gz"
      sha256 "5b17b5adfe7678ae8431a8518bfe590da078e67c78718481c3fe65f3bca30ab2"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2401.0/lightdash-cli-0.2401.0-macos-x64.tar.gz"
      sha256 "683a341436f98f5b8e3b613ac6dedbfc801e0648fb8ce69f46c8ad820965a2ab"
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
