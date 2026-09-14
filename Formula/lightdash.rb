class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.208.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.208.0/lightdash-cli-2.208.0-macos-arm64.tar.gz"
      sha256 "75780a16d136a8a366de651f0adf44c97d2c6c1a43a6e16a2ca032a3f5047ef4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.208.0/lightdash-cli-2.208.0-macos-x64.tar.gz"
      sha256 "eb3876527fc75c158fbc8813e7ea8ea011b1a649340834ad277b0ab383d4d045"
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
