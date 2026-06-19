class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3202.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3202.0/lightdash-cli-0.3202.0-macos-arm64.tar.gz"
      sha256 "025864bd2ad475fdc68f0277e61d427f10543ce6b65ccf103dffbb871a549ce5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3202.0/lightdash-cli-0.3202.0-macos-x64.tar.gz"
      sha256 "3a74e739762ad869743731269231a43447743e40d977dcda1cb702aecf27411d"
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
