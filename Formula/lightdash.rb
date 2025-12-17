class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2262.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.3/lightdash-cli-0.2262.3-macos-arm64.tar.gz"
      sha256 "7b9544b7dfd923d345d17f7d58e5e09c7af27c3350ffb49cc33eae53150abb7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2262.3/lightdash-cli-0.2262.3-macos-x64.tar.gz"
      sha256 "a17b4f264e1e3bf97e211f15b533b2ff218ab4170b7a9371327f2fb8c8a31d8e"
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
