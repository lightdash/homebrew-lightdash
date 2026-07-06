class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3314.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3314.0/lightdash-cli-0.3314.0-macos-arm64.tar.gz"
      sha256 "d1d92dcf60b45e3b23f48142b8eed78111a00413ab51fb708c28804668680147"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3314.0/lightdash-cli-0.3314.0-macos-x64.tar.gz"
      sha256 "a3a3a8b0e252c8de7d72315cdce9a1e52e9c366de51a279c18c803eaf530b6ac"
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
