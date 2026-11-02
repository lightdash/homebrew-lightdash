class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.127.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.127.0/lightdash-cli-3.127.0-macos-arm64.tar.gz"
      sha256 "33c4fbb8732ebd44f54373d14e4b93309502d74d72c32e3673ec01c4af63293e"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.127.0/lightdash-cli-3.127.0-macos-x64.tar.gz"
      sha256 "486564acbb650c364b57dfbab3910d153ff3e60bd83d9040f9347921fd0f93d2"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.127.0/lightdash-cli-3.127.0-linux-x64.tar.gz"
    sha256 "ad0f88f7111358375cf15ccf3f17b8c5ac61d7edb885cd1032e78712ad497487"

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
