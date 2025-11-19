class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2182.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2182.2/lightdash-cli-0.2182.2-macos-arm64.tar.gz"
      sha256 "bbfc9ef3c564720860317a6e92def77fe538fc1dd28a545041421740247824be"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2182.2/lightdash-cli-0.2182.2-macos-x64.tar.gz"
      sha256 "283820f76ff822b82b1122b750e8842387e36d126d7f417b27788ea79b3c694a"
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
