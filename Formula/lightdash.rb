class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.211.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.2/lightdash-cli-3.211.2-macos-arm64.tar.gz"
      sha256 "74fd93c038af827e7b8ef33aa55459cd32ed3eb391d92443940197e6cef33d71"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.211.2/lightdash-cli-3.211.2-macos-x64.tar.gz"
      sha256 "d8f06f1b15fc80b2391d4ac0c64df4bf1893cafe471c72e5ba125df30253c854"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.211.2/lightdash-cli-3.211.2-linux-x64.tar.gz"
    sha256 "d9d77315876d005ec8c647f1fe5c809e1b482515d5a416f18184fc316e92b866"

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
