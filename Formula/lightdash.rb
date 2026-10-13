class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.575.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.2/lightdash-cli-2.575.2-macos-arm64.tar.gz"
      sha256 "66653879afa6471f6f45a7a3e9ff03c6de127e7818946d545c63a230554e7aea"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.575.2/lightdash-cli-2.575.2-macos-x64.tar.gz"
      sha256 "dad79d950268598c7689da6301183ad9f8d1a15c6e0e01a4b25b9413c15897a3"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.575.2/lightdash-cli-2.575.2-linux-x64.tar.gz"
    sha256 "3a3d5152465b2961439fa30b229a1f9cfc462084210845ddf5f262af10647a15"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
