class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2468.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2468.0/lightdash-cli-0.2468.0-macos-arm64.tar.gz"
      sha256 "562935eccbb1017e8a56a2c628dfac64f7402185090b80506b8c0fff102d7b38"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2468.0/lightdash-cli-0.2468.0-macos-x64.tar.gz"
      sha256 "e811dd5e565fcbf0c5fa7231cbd091640f354a8e88649155999dadd020f1a0d8"
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
