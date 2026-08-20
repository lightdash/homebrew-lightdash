class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.212.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.2/lightdash-cli-1.212.2-macos-arm64.tar.gz"
      sha256 "ef4bd189e1df80acf3f11698ad45d73c0c1203acfd37acede8016bb01f504260"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.2/lightdash-cli-1.212.2-macos-x64.tar.gz"
      sha256 "df6b11dea79b08fd27e9f63f5876792a5ee91f5b524582a2dfa6d7833bfaf3aa"
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
