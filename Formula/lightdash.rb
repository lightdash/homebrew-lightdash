class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2708.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2708.0/lightdash-cli-0.2708.0-macos-arm64.tar.gz"
      sha256 "b5be559eb45964c8dfe5ae25a884e80f45b3335cf70cd864d7b303ab720deec9"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2708.0/lightdash-cli-0.2708.0-macos-x64.tar.gz"
      sha256 "e226dab7c3ebc3ab00413e2b39b16d50693dbe4edfabdc7f6539634f2bdef88d"
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
