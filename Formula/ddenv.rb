# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ddenv < Formula
  desc "tool for maintaining a local environment for development"
  homepage "https://github.com/denisdefreyne/ddenv"
  version "0.1.1"
  license "Hippocratic License 3.0"

  depends_on "shadowenv"
  depends_on :macos

  on_intel do
    url "https://github.com/denisdefreyne/ddenv/releases/download/v0.1.1/ddenv_Darwin_x86_64.tar.gz"
    sha256 "dac3a73570d28a5d74ea2c3a75a1f1ea7596f8c41f2d61b73f1e64557bf40a8c"

    def install
      bin.install "ddenv"
    end
  end
  on_arm do
    url "https://github.com/denisdefreyne/ddenv/releases/download/v0.1.1/ddenv_Darwin_arm64.tar.gz"
    sha256 "db7ac8d9fa5598bc404d9e7217872d5c21d16f2bb50181fdece4b20586db2db3"

    def install
      bin.install "ddenv"
    end
  end

  test do
    system "#{bin}/task", "--help"
  end
end
