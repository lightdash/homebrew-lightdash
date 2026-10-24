class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.53.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.0/lightdash-cli-3.53.0-macos-arm64.tar.gz"
      sha256 "b6736b0e5e6c3e6907e48a53e5566a9c636e6a1e4955dc44b0ea8513c3cb83dc"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.53.0/lightdash-cli-3.53.0-macos-x64.tar.gz"
      sha256 "1f8d135cbb0974588c2f2fddb4b42d82eb92777fdb9ba29f93b6b5c916d08d12"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.53.0/lightdash-cli-3.53.0-linux-x64.tar.gz"
    sha256 "e0aa63f12897dce4a1e42d34eb264c7cb38486986cd068eabb777ebd0aae08fc"

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
