class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2772.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.4/lightdash-cli-0.2772.4-macos-arm64.tar.gz"
      sha256 "25b88db43a7c085194c13bffbcc2d6f30287ef49577e9136eb66fb61e48f380c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.4/lightdash-cli-0.2772.4-macos-x64.tar.gz"
      sha256 "6523e48678199aa0ccb687ce8c94da7582df7443a9058afdda74625aba8ac87a"
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
